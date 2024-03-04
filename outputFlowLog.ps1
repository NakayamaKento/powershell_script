# ログを記録するために、TCP 3389 ポートへの接続を定期的に実行します

# Define an array of server names
$servers = @(
    "test-vm-1",
    "test-vm-2",
    "test-vm-3"
)

# Loop through the server list
for ($i = 1; $i -le 100; $i++) {
    Write-Host "loop count is $i "
    foreach ($server in $servers) {
        # Do something with each server
        Write-Host "Processing server: $server"
        Test-NetConnection $server -port 3389
    }
    Start-Sleep -Seconds 60
}
