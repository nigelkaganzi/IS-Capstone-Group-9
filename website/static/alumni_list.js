document.getElementById('search_type').addEventListener('change', function() {
    var searchTerm = document.getElementById('search_term');
    var searchType = this.value;

    if (searchType === 'name') {
        searchTerm.placeholder = 'Enter First or Last name';
    } else if (searchType === 'employment') {
        searchTerm.placeholder = 'Enter job title or company';
    } else if (searchType === 'degree') {
        searchTerm.placeholder = 'Enter Major, Minor, University, or Graduation Date';
    } else if (searchType === 'skill') {
        searchTerm.placeholder = 'Enter Skill';
    } else {
        searchTerm.placeholder = 'Enter Search term';
    }
});