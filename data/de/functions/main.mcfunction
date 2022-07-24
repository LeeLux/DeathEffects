# ========================INFO============================ #
#          This was coded by LeeLux! YouTube Link:         #
# https://www.youtube.com/channel/UCTL2EnToGrLXZaHV7oYHRDg #
#         Please don't claim this as your own work!        #
# ======================================================== #

##detect if someone respawn and runs de:effects##
execute as @a at @s store result score @s de.deathtime run data get entity @s DeathTime
execute as @a[scores={de.deathtime=1..},tag=!de.death] at @s run tag @s add de.death
execute as @a[scores={de.deathtime=0},tag=de.death] at @s run function de:effects
tag @a[scores={de.deathtime=0},tag=de.death] remove de.death
##END##