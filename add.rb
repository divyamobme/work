 class Tree < Struct.new(:name, :children)
  def self.new_from_hash(hash)
    name, children_hash = hash.first
    children = children_hash.map { |k, v| Tree.new_from_hash({k => v}) }
    Tree.new(name, children)
  end

  def visit_all(&block)
    yield(self)
    children.each { |c| c.visit_all(&block) }
  end
end

family_tree = Tree.new_from_hash({
  'grandpa' => {
    'dad' =>   {'child 1' => {}, 'child 2' => {}},
    'uncle' => {'child 3' => {}, 'child 4' => {}},
  },
})

family_tree.visit_all { |node| puts node.name }
