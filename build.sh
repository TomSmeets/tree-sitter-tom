# Build treesitter
tree-sitter generate
tree-sitter build

# Install helix
mkdir -p          ~/.config/helix/runtime/grammars/
cp tom.so         ~/.config/helix/runtime/grammars/tom.so

mkdir -p          ~/.config/helix/runtime/queries/tom/
cp highlights.scm ~/.config/helix/runtime/queries/tom/highlights.scm

# Example highlight
tree-sitter parse     project.tom
tree-sitter highlight project.tom
hx --health tom


# Cleanup
rm -rf src tom.so
