from setuptools import find_packages, setup

setup(
    name="example_notebook",
    version="1.0.0",
    description = "Example notebook",
    long_description="Running notebook examples.",
    url="https://github.com/j-oshi/docker-jupyter-notebook",
    author="J Oshin",
    packages=find_packages(
        where='src',
    ),
    classifiers=[
        "Programming Language :: Python :: 3"
    ],
    python_requires =">= 3.0.*",
)