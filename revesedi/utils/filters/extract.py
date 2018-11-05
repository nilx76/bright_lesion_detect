import PIL.Image
import numpy
from enum import Enum

class Channel(Enum):
    RED     = 0
    GREEN   = 1
    BLUE    = 2

def extract_channel(
        # Image to be extracted
        color_image: PIL.Image,
        # Color channel to extract
        channel: Channel
) -> numpy.ndarray:
    """Extract a channel from an image.

    Accept input as PIL.Image
    then return the desired channel of 
    that image as a monochrome black-and-white 
    image represented as a 2D array.
    """
    color_matrix = numpy.array(color_image)

    result_matrix = color_matrix[:,:,channel.value]
    # 0 for red, 1 for green and 2 for blue

    result = PIL.Image.fromarray(result_matrix)

    return result

def get_red(color_image):
    extract_channel(color_image,Channel.RED)

def get_green(color_image):
    extract_channel(color_image,Channel.GREEN)

def get_blue(color_image):
    extract_channel(color_image,Channel.BLUE)