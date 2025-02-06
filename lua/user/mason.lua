-- if your mason download has connection error,use the following line.
-- lvim.builtin.mason.registries = { "github:mason-org/mason-registry@2025-02-05-tasty-liar" }

-- speed up the mason download of github
lvim.builtin.mason.github = { download_url_template = "https://051030.xyz/%s/releases/download/%s/%s" }
