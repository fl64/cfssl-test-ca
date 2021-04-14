#!/usr/bin/env bash
if !([ -f "ca.pem" ] && [ -f "ca-key.pem" ]);
then
  cfssl gencert -initca ca-csr.json | cfssljson -bare ca -
else
  echo "CA keypair already exists!"
fi
