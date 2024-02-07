# official TensorFlow GPU image
FROM python:3.11
RUN pip install --upgrade pip

# working dir
#WORKDIR /graphcast

# requirements
COPY setup.py .
RUN python -m pip install -e .
COPY . .

# open Jupyter (you navigate to demo notebook)
#CMD ["jupyter", "lab", "--ip 0.0.0.0", "--no-browser", "--allow-root"]
CMD jupyter lab --ip 0.0.0.0 --no-browser --allow-root
