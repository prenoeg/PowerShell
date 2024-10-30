Function Save-Video  {
    Param($video_url)
    
    Write-Host "Attempting to save $video_url" -ForegroundColor Yellow

    $request = Invoke-WebRequest -Uri $video_url
    
    # display html code
    $request.Content
}

Save-Video $args[0]
