


--STRING:

* Translate:

-- Formatos de telefonos Existentes actualmente en x_ecc_adr2 y cantidad de veces que se encuentra.

		SELECT
		     COUNT(1) freq,
		     translate(tel_number,'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789','aaaaaaaaaaaaaaaaaaaaaaaaaaAAAAAAAAAAAAAAAAAAAAAAAAAA9999999999'
		     ) telpatrn,
		     length(tel_number) largo
		 FROM
		     exstg_crm.x_ecc_adr2
		 WHERE
		     country = 'PE'
		group by  translate(tel_number,'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789','aaaaaaaaaaaaaaaaaaaaaaaaaaAAAAAAAAAAAAAAAAAAAAAAAAAA9999999999'
		     ) ,
		     length(tel_number) 
		order by freq DESC;