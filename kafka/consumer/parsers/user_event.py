import json


class UserEvent(object):
    def __init__(self, name=None, favorite_number=None, favorite_color=None):
        self.name = name
        self.favorite_number = favorite_number
        self.favorite_color = favorite_color

    def __len__(self):
        return 1

    def decode(self):
        return json.dumps({
            "name": self.name,
            "favorite_number": self.favorite_number,
            "favorite_color": self.favorite_color
        })


def dict_to_user_event(obj, ctx):
    """
    Converts object literal(dict) to a User instance.
    Args:
        obj (dict): Object literal(dict)
        ctx (SerializationContext): Metadata pertaining to the serialization
            operation.
    """
    if obj is None:
        return None
    return UserEvent(name=obj['name'],
                     favorite_number=obj['favorite_number'],
                     favorite_color=obj['favorite_color'])
