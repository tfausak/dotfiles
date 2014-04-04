if test -d ~/.cabal/bin
    set fish_user_paths ~/.cabal/bin $fish_user_paths
end

if test -d ~/Library/Haskell/bin
    set fish_user_paths ~/Library/Haskell/bin $fish_user_paths
end

if test -d ~/bin
    set fish_user_paths ~/bin $fish_user_paths
end
