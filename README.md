# set_hamoa_env
Set hamoa pre env for development

# 1. clone pre.sh
```
git clone git@github.com:LXQUALCOMM/set_hamoa_env.git
```

# 2.execute pre.sh
```
chmod +x pre.sh
```  
```
./pre.sh
```

# 3. set name and e-mail

```
=== Please configure Git user information ===
Enter your Git username:<your name>
Enter your Git email address:<your emall address>
```

# 4. set ssh
After you run pre.sh, will appear the below information: 
```
Your generated SSH public key is shown below. Please copy it to GitHub/GitLab etc.:
ssh-ed25519 <Base64 encoded content of public key> <your email>
```
copy them to: GITHUB->Settings->SSH and GPG keys->New SSH key

# 5. clone hamoa code
