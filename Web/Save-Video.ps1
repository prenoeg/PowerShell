Function Save-Video  {
    Param($video_url)
    
    Write-Host "Attempting to save $video_url" -ForegroundColor Yellow

    # using Invoke-WebRequest instead of curl.exe here
    $response = Invoke-WebRequest -Uri $video_url

    # the general idea is to replace all external utility functions with pure powershell
    # so curl.exe and yt-dlp.exe will be handled directly via powershell...
    
    # display found links
    $response.Links
}

Save-Video $args[0]
