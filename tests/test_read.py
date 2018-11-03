import unittest
import revesedi.utils.io.read as read
import PIL.Image 

class TestRead(unittest.TestCase):

    def test_read(self):
        self.assertIsInstance(read('dataset/DRIVE/test/images/01_test.tif'),PIL.Image.Image)
        self.assertRaises(FileNotFoundError,read,'dataset/DRIVE/test/images/not_exist.tif')

if __name__ == '__main__':
    unittest.main()
