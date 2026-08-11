# Rust based SOME/IP Transport Library for Eclipse uProtocol&trade;

This crate implements the SOME/IP transport as specified in [uProtocol v1.6.0-alpha.7](https://github.com/eclipse-uprotocol/up-spec/tree/v1.6.0-alpha.7) based on the [COVESA vsomeip library](https://github.com/COVESA/vsomeip).

## Getting Started

### Building the Library

To build the library, setup the environment

``` bash
source build/envsetup.sh
```

then run:

```bash
VSOMEIP_INSTALL_PATH=<path/to/where/to/install/vsomeip> cargo build
```

in the project root directory.

See `vsomeip-sys/README.md` for more details on options.

This library leverages the [uProtocol Rust Language Library](https://github.com/eclipse-uprotocol/up-rust) for data types and models specified by uProtocol.

### Running the Tests

To run the tests:

```bash
VSOMEIP_INSTALL_PATH=<path/to/vsomeip/install> LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$VSOMEIP_INSTALL_PATH/lib cargo test -- --test-threads 1
```

Breaking this down:
* Details about the environment variables can be found in `vsomeip-sys/README.md`.
* We need to pass in `-- --test-threads 1` because the tests refer to the same configurations and will fall over if they are run simultaneously. So we instruct to use a single thread, i.e. run the tests in serial.

### Using the Library

The library contains the following modules:

| Package   | [uProtocol spec](https://github.com/eclipse-uprotocol/uprotocol-spec) | Purpose |
| :-------- | :-------------------------------------------------------------------- | :------ |
| transport | [uP-L1 Specifications](https://github.com/eclipse-uprotocol/up-spec/blob/v1.6.0-alpha.7/up-l1/README.adoc) | Implementation of the `UTransport` trait used for bidirectional point-2-point communication between uEntities.
