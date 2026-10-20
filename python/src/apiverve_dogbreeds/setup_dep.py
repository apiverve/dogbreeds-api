from setuptools import setup, find_packages

setup(
    name='apiverve_dogbreeds',
    version='1.2.2',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Dog Breeds searches canine breed records by name to return official breed names and kennel club group classifications. Paid plans add height, weight, lifespan, traits, and original breeding purposes.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/dogbreeds?utm_source=pypi&utm_medium=referral&utm_content=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
