class profiles::base {

  include profiles::base::ssh
  
  $myvar = ''

  if $myvar {
    notify { 'This is true': }
  }
  else {
    notify { 'This is false': }
  }

}
