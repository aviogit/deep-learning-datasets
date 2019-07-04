# deep-learning-datasets

Classes:

['bagel', 'chihuahua', 'chocolate', 'dalmatian', 'dog', 'duckling', 'friedchicken', 'guacamole', 'icecream', 'icecreamcone', 'kitten', 'labradoodle', 'marshmallow', 'mop', 'muffin', 'painauchocolat', 'parrot', 'plantain', 'sharpei', 'sheepdog', 'shiba', 'sloth']

For Google Image search, it's better to replace:

```
icecream -> caramel ice cream
icecreamcone -> ice cream mcdonalds
marshmallow -> roasted marshmallow
sheepdog -> hungarian sheepdog
```

#> for i in `ls -d */` ; do echo $i ; mv /tmp/downloads/$i/* $i ; sleep 1 ; done
#> class=`basename $(pwd)` ; echo $class ; counter=1 ; for i in * ; do echo '----' ; echo $i ; extension="${i##*.}" ; echo $extension ; echo $class-$counter ; mv $i $class-$counter.$extension ; counter=$((counter+1)) ; echo '----' ; sleep 0.01 ; done
