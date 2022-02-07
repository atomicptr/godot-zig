pub usingnamespace @import("gen/__import.zig");
pub const c_api = @import("c_api.zig");
pub const api = @import("api.zig");

// add important methods to root scope for more comfortable access
pub const initNativeScript = api.initNativeScript;
pub const init = api.init;
pub const terminate = api.terminate;
pub const registerClass = api.registerClass;
pub const registerMethod = api.registerMethod;
pub const registerMethodWithDifferentName = api.registerMethodWithDifferentName;
