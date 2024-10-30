Function Save-Video  {
    Param($video_url)
    
    Write-Host "Attempting to save $video_url" -ForegroundColor Yellow

    $response = Invoke-WebRequest -Uri $video_url
    
    # display found links
    $response.Links
}

Save-Video $args[0]
