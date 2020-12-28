# dev-pymc3
- とりあえずpymc3を手元で動かしたい人向けのレポジトリ
  - 詳しい設定はDockerfileを参照のこと


## How to use.

### とにかく何も考えずに動かしたい人向け

0. [Docker](https://docs.docker.com/get-docker/)がインストールされていることを前提とします

1. Dockerhubにアップされている[taiga4112/dev-pymc3](https://hub.docker.com/repository/docker/taiga4112/dev-pymc3)を利用します

    - このレポジトリにあるDockerfileを利用してBuildしたコンテナイメージです

    ```sh
    $ docker pull taiga4112/dev-pymc3
    $ docker run --rm --name dev-pymc3 -d -p 8888:8888 \
        -v $(pwd):/workspace -w /workspace \
        taiga4112/dev-pymc3 \
        jupyter-lab --no-browser --port=8888 --ip=0.0.0.0 \
        --allow-root --NotebookApp.token='dev-pymc3'
    ```

2. [http://localhost:8888](http://localhost:8888)にアクセスします。
    - Tokenは上のコマンドの場合だと、`dev-pymc3`になります

3. 利用が終わったら以下のコマンドできちんとコンテナを終了させてください

    ```sh
    $ docker kill dev-pymc3
    ```

