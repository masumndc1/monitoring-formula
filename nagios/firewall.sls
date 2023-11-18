public:
  firewalld.present:
    - name: public
    - default: False
    - ports:
      - 80/tcp
      - 5666/tcp
