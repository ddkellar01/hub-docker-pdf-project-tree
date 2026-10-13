import os
import unittest

class TestPipelineOutput(unittest.TestCase):
    
    def test_output_directory_exists(self):
        self.assertTrue(os.path.exists("output"), "Output directory should exist after run.")

    def test_tree_file_exists(self):
        tree_path = "output/TREE.md"
        if os.path.exists(tree_path):
            with open(tree_path, "r") as f:
                content = f.read()
            self.assertGreater(len(content), 0, "TREE.md should not be empty.")

if __name__ == "__main__":
    unittest.main()
      
