# ft_printf

`ft_printf` est un projet 42 qui consiste à recoder une version simplifiée de `printf` de la libc.

## Objectif

Créer une librairie statique `libftprintf.a` qui expose la fonction :

```c
int ft_printf(const char *format, ...);
```

## Contraintes du projet

- Nom du programme : `libftprintf.a`
- Fichiers à rendre : `Makefile`, `*.h`, `*.c`, `*/*.h`, `*/*.c`
- Cibles Makefile requises : `NAME`, `all`, `clean`, `fclean`, `re`
- Fonctions externes autorisées : `malloc`, `free`, `write`, `va_start`, `va_arg`, `va_copy`, `va_end`
- `libft` autorisée : Oui
- Utiliser `ar` pour créer la librairie (usage de `libtool` interdit)
- Le header doit s’appeler `ft_printf.h`
- La librairie `libftprintf.a` doit être générée à la racine du dépôt

## Conversions gérées

- `%c` : caractère
- `%s` : chaîne de caractères
- `%p` : pointeur (`void *`) en hexadécimal
- `%d` : entier décimal signé
- `%i` : entier décimal signé
- `%u` : entier décimal non signé
- `%x` : hexadécimal minuscule
- `%X` : hexadécimal majuscule
- `%%` : caractère `%`

## Compilation

```bash
make
```

Cela génère `libftprintf.a`.

### Autres commandes utiles

```bash
make clean
make fclean
make re
```

## Exemple d’utilisation

```c
#include "ft_printf.h"

int main(void)
{
	ft_printf("Hello %s, valeur = %d, hex = %x\n", "42", 42, 42);
	return (0);
}
```
