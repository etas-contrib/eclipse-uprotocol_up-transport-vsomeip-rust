# vsomeip-proc-macro

Procedural macros used by `up-transport-vsomeip` to generate fixed-size pools of `extern "C"` callbacks for the COVESA vSomeIP API.

`generate_message_handler_extern_c_fns!` creates callbacks for incoming messages, while `generate_available_state_handler_extern_c_fns!` creates callbacks for application-state availability notifications; the transport allocates and recycles these callbacks by numeric ID.

This crate is an implementation detail of the Eclipse uProtocol SOME/IP transport; all users should depend on [`up-transport-vsomeip`](https://crates.io/crates/up-transport-vsomeip) rather than invoke these macros directly.
See the [`up-transport-vsomeip` documentation](https://docs.rs/up-transport-vsomeip) for transport setup and usage, and the [project repository](https://github.com/eclipse-uprotocol/up-transport-vsomeip-rust) for examples.
