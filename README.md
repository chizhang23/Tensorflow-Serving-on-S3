# Tensorflow-Serving-on-S3
* model.config: Specify model names, paths, version policy & labels, logging configuration and more.

* tf_serving.shell: shell scripts does not contain the configuration version
    
    `aws-vault exec sandbox ./tf_serving.sh`
     
    `curl -d '{"instances": [1.0, 2.0, 5.0]}'   -X POST http://localhost:8501/v1/models/half_plus_twsaved_model_half_plus_two_cpu:predict`

   
* tf_serving_config.shell: shell scripts contains the configuration version

    `aws-vault exec sandbox ./tf_serving_config.sh`

    `curl -d '{"instances": [1.0, 2.0, 5.0]}'     -X POST http://localhost:8501/v1/models/model1:predict`


* Reference:

    [TensorFlow Serving with Docker][1]

    [Tensorflow Serving Configuration][2]

[1]:https://www.tensorflow.org/tfx/serving/docker
[2]:https://www.tensorflow.org/tfx/serving/serving_config
