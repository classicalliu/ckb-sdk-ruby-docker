FROM classicalliu/ruby263:0.1

WORKDIR /

ENV SDK_BRANCH v0.12.2

RUN git clone --branch ${SDK_BRANCH} https://github.com/nervosnetwork/ckb-sdk-ruby.git

WORKDIR /ckb-sdk-ruby

RUN bundle

CMD [ "bin/console" ]
