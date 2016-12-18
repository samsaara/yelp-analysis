# This is meant to be run only once and for the first time to create ".keras" folder in the home directory.
# That helps us in replacing the backend from "Tensorflow" to "Theano"

try:
    import keras
except ImportError:
    pass
