# This sample demonstrates some basic Mojo
# Range and print functions available in the standard library
# It also demonstrates importing a simple Python program into Mojo

from python.python import (
    Python,
    _destroy_python,
    _init_python,
)


def main():
    print("Hello Mojo 🔥!")
    for x in range(9, 0, -3):
        print(x)
    try:
        Python.add_to_path(".")
        Python.add_to_path("./examples")
        let test_module = Python.import_module("simple_interop")
        test_module.test_interop_func()
    except e:
        print(e.value)
        print("could not find module simple_interop")