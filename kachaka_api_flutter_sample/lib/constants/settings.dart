const String ipAddress = String.fromEnvironment(
  "IP_ADDRESS",
  defaultValue: "10.40.42.15", // カチャカのIPアドレスを設定
);
const int port = int.fromEnvironment("PORT", defaultValue: 26400);

const robotDepth = 0.387;
const robotWidth = 0.24;
