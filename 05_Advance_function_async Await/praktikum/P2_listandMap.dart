void main() {
Map<List,String> terjemahan = {
[8] :'delapan',
[9] :'sembilan',
[10]:'sepuluh',
[11]:'sebelas',
[12]:'dua belas'
};
terjemahan.forEach((key, value){
print("'$key'adalah'$value'");
});
}