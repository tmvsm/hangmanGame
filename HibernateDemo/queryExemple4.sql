select p.PALAVRA_ID, p.PALAVRA_DESCRICAO from palavra p, categoria c, palavra_categoria pc, dificuldade d where c.CATEGORIA_DESCRICAO="empresas" and c.CATEGORIA_ID = pc.CATEGORIA_ID and pc.PALAVRA_ID = p.PALAVRA_ID and d.DIFICULDADE_DESCRICAO="facil" and d.DIFICULDADE_ID = p.dificuldade_DIFICULDADE_ID ;