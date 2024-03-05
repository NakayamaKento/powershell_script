# Import the required module
Import-Module -Name 'Microsoft.PowerShell.Utility'

# Define the URL to make the GET request to
$url = 'http://test-vm-1'

# Create a new HTTP request object
$request = [System.Net.WebRequest]::Create($url)
$request.Method = 'GET'

# Send the request and get the response
$response = $request.GetResponse()

# Read the response content
$stream = $response.GetResponseStream()
$reader = New-Object System.IO.StreamReader($stream)
$responseContent = $reader.ReadToEnd()

# Close the response and stream
$response.Close()
$reader.Close()

# Output the response content
$responseContent
