select p.PALAVRA_ID, p.PALAVRA_DESCRICAO from palavra p, categoria c, palavra_categoria pc where c.CATEGORIA_DESCRICAO="empresas" and c.CATEGORIA_ID = pc.CATEGORIA_ID and pc.PALAVRA_ID = p.PALAVRA_ID and p.dificuldade_DIFICULDADE_ID=1 ;