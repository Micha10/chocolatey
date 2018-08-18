import-module -Name au\AU

$latest_release_url = 'http://docfetcher.sourceforge.net/de/download.html' 

#  $latest_release.Links | ? href -match '\.exe/download$' | % href

function global:au_GetLatest {
    $latest_release = Invoke-WebRequest $latest_release_url
	$url = $latest_release.Links | ? href -match '\.exe/download$' | % href
	$Version =  ($url -split '/')[7]

    return @{        Version = $Version;		URL32 = $url    }
}

function global:au_SearchReplace {
    return @{
        "$($Latest.PackageName).nuspec" = @{
            '(<dependency id="zeal.install" version=")[0-9.]+"' = "`${1}$($Latest.Version)`""
        }
    }
}

function global:au_BeforeUpdate($pkg) {
    $pkg.NuspecXml.package.metadata.releaseNotes = $global:Latest.ReleaseNotes.ToString()
}

update -ChecksumFor 32
