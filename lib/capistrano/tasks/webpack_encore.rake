namespace :deploy do
    task :webpack_encore do
        on roles :app do
            execute "pushd #{release_path.to_s} && ./node_modules/.bin/encore #{fetch(:webpack_encore_env)} #{fetch(:webpack_encore_flags)} && popd"
        end
    end

    task :updated do
        invoke "deploy:webpack_encore"
    end
end

namespace :load do
    task :defaults do
        set :webpack_encore_env, "production"
        set :webpack_encore_flags, ""
    end
end
