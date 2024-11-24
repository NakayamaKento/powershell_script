# CustomData.bin のパス
$customDataPath = "C:\AzureData\CustomData.bin"

# CustomData.bin を読み込み、Base64 からデコード
$customData = Get-Content -Path $customDataPath -Raw
$decodedData = [System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String($customData))

# デコードされたデータをスクリプトとして実行
Invoke-Expression $decodedData