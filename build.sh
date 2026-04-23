# Build treesitter
tree-sitter generate
tree-sitter build

# Install helix
mkdir -p ~/.config/helix/runtime/grammars/
cp parser.so ~/.config/helix/runtime/grammars/tom.so

# Example highligh
tree-sitter parse     project.tom
tree-sitter highlight project.tom
