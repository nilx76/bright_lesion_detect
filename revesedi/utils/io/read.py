from PIL import Image
from os.path import isfile


def read(path_to_file):
    """Load data from an image

    Load data from an image, in any format
    that is supported by PIL (Pillow) library.
    If input path does not point to a file, 
    throw FileNotFoundError.
    """
    #First check for the image's existance
    if (not isfile(path_to_file)):
        raise FileNotFoundError(path_to_file)
    
    image = Image.open(path_to_file)
    return image
