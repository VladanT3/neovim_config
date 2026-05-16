do
    -- Because most plugins are hosted on GitHub, this helper function can help to have less repetition.
    local utils = {}
    function utils.gh(repo) return 'https://github.com/' .. repo end
    return utils
end
