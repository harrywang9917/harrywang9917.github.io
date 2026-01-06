// Tag Filter Functionality
document.addEventListener('DOMContentLoaded', function() {
  const filterTags = document.querySelectorAll('.filter-tag');
  const posts = document.querySelectorAll('.card[data-tags]');

  if (filterTags.length === 0 || posts.length === 0) {
    return;
  }

  filterTags.forEach(tag => {
    tag.addEventListener('click', function(e) {
      e.preventDefault();

      // Update active state
      filterTags.forEach(t => t.classList.remove('active'));
      this.classList.add('active');

      const selectedTag = this.getAttribute('data-tag');

      // Filter posts
      posts.forEach(post => {
        const postTags = post.getAttribute('data-tags');

        if (selectedTag === 'all') {
          post.style.display = '';
        } else {
          // Check if post has the selected tag
          const tagsArray = postTags.split(',').map(t => t.trim());
          if (tagsArray.includes(selectedTag)) {
            post.style.display = '';
          } else {
            post.style.display = 'none';
          }
        }
      });
    });
  });
});
