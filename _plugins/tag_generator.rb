# Generates tag files automatically.
# Taken from https://www.untangled.dev/2020/06/02/tag-management-jekyll/ and
# customized to fit this theme.

Jekyll::Hooks.register :posts, :post_write do |post|
  all_existing_tags = Dir.entries("_featured_tags")
    .map { |t| t.match(/(.*).md/) }
    .compact.map { |m| m[1] }

  tags = post['tags'].reject { |t| t.empty? }
  tags.each do |tag|
    generate_tag_file(tag) if !all_existing_tags.include?(tag)
  end
end

def generate_tag_file(tag)
  # generate tag file
  File.open("_featured_tags/#{tag}.md", "wb") do |file|
    file << "---\nlayout: tag-list\ntitle: #{tag.capitalize}\nmenu: false\ndescription: >\n  Posts about #{tag}\n---"
  end
end
