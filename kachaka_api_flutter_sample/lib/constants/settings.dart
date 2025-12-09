const String ipAddress = String.fromEnvironment(
  "IP_ADDRESS",
  defaultValue: "10.40.42.28",
  // カチャカのIPアドレス(研究室) 10.40.5.108
  // カチャカのIPアドレス(H509) 10.40.42.28
);
const int port = int.fromEnvironment("PORT", defaultValue: 26400);

const robotDepth = 0.387;
const robotWidth = 0.24;
