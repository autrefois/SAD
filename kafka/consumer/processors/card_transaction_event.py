from datetime import datetime
import json
import numpy as np
import psycopg2
import psycopg2.extras


class CardTransactionEvent(object):
    def __init__(self,
                 v1=None,
                 v2=None,
                 v3=None,
                 v4=None,
                 v5=None,
                 v6=None,
                 v7=None,
                 v8=None,
                 v9=None,
                 v10=None,
                 v11=None,
                 v12=None,
                 v13=None,
                 v14=None,
                 v15=None,
                 v16=None,
                 v17=None,
                 v18=None,
                 v19=None,
                 v20=None,
                 v21=None,
                 v22=None,
                 v23=None,
                 v24=None,
                 v25=None,
                 v26=None,
                 v27=None,
                 v28=None,
                 amount=None):
        self.v1 = v1
        self.v2 = v2
        self.v3 = v3
        self.v4 = v4
        self.v5 = v5
        self.v6 = v6
        self.v7 = v7
        self.v8 = v8
        self.v9 = v9
        self.v10 = v10
        self.v11 = v11
        self.v12 = v12
        self.v13 = v13
        self.v14 = v14
        self.v15 = v15
        self.v16 = v16
        self.v17 = v17
        self.v18 = v18
        self.v19 = v19
        self.v20 = v20
        self.v21 = v21
        self.v22 = v22
        self.v23 = v23
        self.v24 = v24
        self.v25 = v25
        self.v26 = v26
        self.v27 = v27
        self.v28 = v28
        self.amount = amount

    def __len__(self):
        return 1

    def decode(self):
        decoded = json.dumps({
            "V1": self.v1,
            "V2": self.v2,
            "V3": self.v3,
            "V4": self.v4,
            "V5": self.v5,
            "V6": self.v6,
            "V7": self.v7,
            "V8": self.v8,
            "V9": self.v9,
            "V10": self.v10,
            "V11": self.v11,
            "V12": self.v12,
            "V13": self.v13,
            "V14": self.v14,
            "V15": self.v15,
            "V16": self.v16,
            "V17": self.v17,
            "V18": self.v18,
            "V19": self.v19,
            "V20": self.v20,
            "V21": self.v21,
            "V22": self.v22,
            "V23": self.v23,
            "V24": self.v24,
            "V25": self.v25,
            "V26": self.v26,
            "V27": self.v27,
            "V28": self.v28,
            "Amount": self.amount
            })
        return decoded


def encode(obj, ctx):
    """
    Converts object literal(dict) to a Card Transaction instance.
    Args:
        obj (dict): Object literal(dict)
        ctx (SerializationContext): Metadata pertaining to the serialization
            operation.
    """
    if obj is None:
        return None
    event = CardTransactionEvent(
        v1=obj['V1'],
        v2=obj['V2'],
        v3=obj['V3'],
        v4=obj['V4'],
        v5=obj['V5'],
        v6=obj['V6'],
        v7=obj['V7'],
        v8=obj['V8'],
        v9=obj['V9'],
        v10=obj['V10'],
        v11=obj['V11'],
        v12=obj['V12'],
        v13=obj['V13'],
        v14=obj['V14'],
        v15=obj['V15'],
        v16=obj['V16'],
        v17=obj['V17'],
        v18=obj['V18'],
        v19=obj['V19'],
        v20=obj['V20'],
        v21=obj['V21'],
        v22=obj['V22'],
        v23=obj['V23'],
        v24=obj['V24'],
        v25=obj['V25'],
        v26=obj['V26'],
        v27=obj['V27'],
        v28=obj['V28'],
        amount=obj['Amount']
    )
    return event


def predict_eval(instances, pred, threshold):
    """
    Evaluates the prediction result based on the mean squared error.
    Args:
        instances (array): Input data sent to the prediction model
        pred (array): Prediction result
        threshold (float): Mean squared error threshold
    """
    mse = np.mean(np.square(np.array(instances) - np.array(pred)), axis=1)
    print(mse)
    if mse >= threshold:
        return 1
    return 0


def save_to_db(input, prediction):
    """
    Persists the data and the prediction result for further analysis.
    Args:
        input (array): Input data sent to the prediction model
        prediction (int): The prediction evaluation result
    """
    db_conn = psycopg2.connect(
            host='host.docker.internal',
            database="postgres",
            port=5432,
            user="svc_kafka",
            password="kafka")
    obj = {
        'amount': input['Amount'],
        'potential_fraud': prediction,
        'consumer_tsp': datetime.now()
    }
    cursor = db_conn.cursor(cursor_factory=psycopg2.extras.DictCursor)
    q = "INSERT INTO sad.tbl_card_transactions (amount, potential_fraud, consumer_tsp) \
                    VALUES(%(amount)s, %(potential_fraud)s, %(consumer_tsp)s)"
    try:
        cursor.execute(q, obj)
        db_conn.commit()
    except Exception as e:
        raise e
