/*
 * Distributed under the Boost Software License, Version 1.0.
 *    (See accompanying file LICENSE_1_0.txt or copy at
 *          http://www.boost.org/LICENSE_1_0.txt)
 */
module gobject.gvaluetypes;

import gobject.gvalue;
import gobject.gtype;

import glib;


// #define G_VALUE_HOLDS_CHAR(value)	 (G_TYPE_CHECK_VALUE_TYPE ((value), G_TYPE_CHAR))
// /**
//  * G_VALUE_HOLDS_UCHAR:
//  * @value: a valid #GValue structure
//  *
//  * Checks whether the given #GValue can hold values of type %G_TYPE_UCHAR.
//  *
//  * Returns: %TRUE on success.
//  */
// #define G_VALUE_HOLDS_UCHAR(value)	 (G_TYPE_CHECK_VALUE_TYPE ((value), G_TYPE_UCHAR))
// /**
//  * G_VALUE_HOLDS_BOOLEAN:
//  * @value: a valid #GValue structure
//  *
//  * Checks whether the given #GValue can hold values of type %G_TYPE_BOOLEAN.
//  *
//  * Returns: %TRUE on success.
//  */
// #define G_VALUE_HOLDS_BOOLEAN(value)	 (G_TYPE_CHECK_VALUE_TYPE ((value), G_TYPE_BOOLEAN))
// /**
//  * G_VALUE_HOLDS_INT:
//  * @value: a valid #GValue structure
//  *
//  * Checks whether the given #GValue can hold values of type %G_TYPE_INT.
//  *
//  * Returns: %TRUE on success.
//  */
// #define G_VALUE_HOLDS_INT(value)	 (G_TYPE_CHECK_VALUE_TYPE ((value), G_TYPE_INT))
// /**
//  * G_VALUE_HOLDS_UINT:
//  * @value: a valid #GValue structure
//  *
//  * Checks whether the given #GValue can hold values of type %G_TYPE_UINT.
//  *
//  * Returns: %TRUE on success.
//  */
// #define G_VALUE_HOLDS_UINT(value)	 (G_TYPE_CHECK_VALUE_TYPE ((value), G_TYPE_UINT))
// /**
//  * G_VALUE_HOLDS_LONG:
//  * @value: a valid #GValue structure
//  *
//  * Checks whether the given #GValue can hold values of type %G_TYPE_LONG.
//  *
//  * Returns: %TRUE on success.
//  */
// #define G_VALUE_HOLDS_LONG(value)	 (G_TYPE_CHECK_VALUE_TYPE ((value), G_TYPE_LONG))
// /**
//  * G_VALUE_HOLDS_ULONG:
//  * @value: a valid #GValue structure
//  *
//  * Checks whether the given #GValue can hold values of type %G_TYPE_ULONG.
//  *
//  * Returns: %TRUE on success.
//  */
// #define G_VALUE_HOLDS_ULONG(value)	 (G_TYPE_CHECK_VALUE_TYPE ((value), G_TYPE_ULONG))
// /**
//  * G_VALUE_HOLDS_INT64:
//  * @value: a valid #GValue structure
//  *
//  * Checks whether the given #GValue can hold values of type %G_TYPE_INT64.
//  *
//  * Returns: %TRUE on success.
//  */
// #define G_VALUE_HOLDS_INT64(value)	 (G_TYPE_CHECK_VALUE_TYPE ((value), G_TYPE_INT64))
// /**
//  * G_VALUE_HOLDS_UINT64:
//  * @value: a valid #GValue structure
//  *
//  * Checks whether the given #GValue can hold values of type %G_TYPE_UINT64.
//  *
//  * Returns: %TRUE on success.
//  */
// #define G_VALUE_HOLDS_UINT64(value)	 (G_TYPE_CHECK_VALUE_TYPE ((value), G_TYPE_UINT64))
// /**
//  * G_VALUE_HOLDS_FLOAT:
//  * @value: a valid #GValue structure
//  *
//  * Checks whether the given #GValue can hold values of type %G_TYPE_FLOAT.
//  *
//  * Returns: %TRUE on success.
//  */
// #define G_VALUE_HOLDS_FLOAT(value)	 (G_TYPE_CHECK_VALUE_TYPE ((value), G_TYPE_FLOAT))
// /**
//  * G_VALUE_HOLDS_DOUBLE:
//  * @value: a valid #GValue structure
//  *
//  * Checks whether the given #GValue can hold values of type %G_TYPE_DOUBLE.
//  *
//  * Returns: %TRUE on success.
//  */
// #define G_VALUE_HOLDS_DOUBLE(value)	 (G_TYPE_CHECK_VALUE_TYPE ((value), G_TYPE_DOUBLE))
// /**
//  * G_VALUE_HOLDS_STRING:
//  * @value: a valid #GValue structure
//  *
//  * Checks whether the given #GValue can hold values of type %G_TYPE_STRING.
//  *
//  * Returns: %TRUE on success.
//  */
// #define G_VALUE_HOLDS_STRING(value)	 (G_TYPE_CHECK_VALUE_TYPE ((value), G_TYPE_STRING))
// /**
//  * G_VALUE_HOLDS_POINTER:
//  * @value: a valid #GValue structure
//  *
//  * Checks whether the given #GValue can hold values of type %G_TYPE_POINTER.
//  *
//  * Returns: %TRUE on success.
//  */
// #define G_VALUE_HOLDS_POINTER(value)	 (G_TYPE_CHECK_VALUE_TYPE ((value), G_TYPE_POINTER))
// /**
//  * G_TYPE_GTYPE:
//  *
//  * The type for #GType.
//  */
// #define	G_TYPE_GTYPE			 (g_gtype_get_type())
// /**
//  * G_VALUE_HOLDS_GTYPE:
//  * @value: a valid #GValue structure
//  *
//  * Checks whether the given #GValue can hold values of type %G_TYPE_GTYPE.
//  *
//  * Since: 2.12
//  * Returns: %TRUE on success.
//  */
// #define G_VALUE_HOLDS_GTYPE(value)	 (G_TYPE_CHECK_VALUE_TYPE ((value), G_TYPE_GTYPE))
// /**
//  * G_VALUE_HOLDS_VARIANT:
//  * @value: a valid #GValue structure
//  *
//  * Checks whether the given #GValue can hold values of type %G_TYPE_VARIANT.
//  *
//  * Returns: %TRUE on success.
//  *
//  * Since: 2.26
//  */
// #define G_VALUE_HOLDS_VARIANT(value)     (G_TYPE_CHECK_VALUE_TYPE ((value), G_TYPE_VARIANT))

extern(C):

/* --- prototypes --- */
deprecated("use g_value_set_schar")
void                  g_value_set_char          (GValue       *value,
                                                 gchar         v_char);
deprecated("use g_value_get_schar")
gchar                 g_value_get_char          (const(GValue) *value);

void		      g_value_set_schar		(GValue	      *value,
						 gint8	       v_char);

gint8		      g_value_get_schar		(const(GValue) *value);

void		      g_value_set_uchar		(GValue	      *value,
						 guchar	       v_uchar);

guchar		      g_value_get_uchar		(const(GValue) *value);

void		      g_value_set_boolean	(GValue	      *value,
						 gboolean      v_boolean);

gboolean	      g_value_get_boolean	(const(GValue) *value);

void		      g_value_set_int		(GValue	      *value,
						 gint	       v_int);

gint		      g_value_get_int		(const(GValue) *value);

void		      g_value_set_uint		(GValue	      *value,
						 guint	       v_uint);

guint		      g_value_get_uint		(const(GValue) *value);

void		      g_value_set_long		(GValue	      *value,
						 glong	       v_long);

glong		      g_value_get_long		(const(GValue) *value);

void		      g_value_set_ulong		(GValue	      *value,
						 gulong	       v_ulong);

gulong		      g_value_get_ulong		(const(GValue) *value);

void		      g_value_set_int64		(GValue	      *value,
						 gint64	       v_int64);

gint64		      g_value_get_int64		(const(GValue) *value);

void		      g_value_set_uint64	(GValue	      *value,
						 guint64      v_uint64);

guint64		      g_value_get_uint64	(const(GValue) *value);

void		      g_value_set_float		(GValue	      *value,
						 gfloat	       v_float);

gfloat		      g_value_get_float		(const(GValue) *value);

void		      g_value_set_double	(GValue	      *value,
						 gdouble       v_double);

gdouble		      g_value_get_double	(const(GValue) *value);

void		      g_value_set_string	(GValue	      *value,
						 const(gchar)  *v_string);

void		      g_value_set_static_string (GValue	      *value,
						 const(gchar)  *v_string);

const(gchar) *         g_value_get_string	(const(GValue) *value);

gchar*		      g_value_dup_string	(const(GValue) *value);

void		      g_value_set_pointer	(GValue	      *value,
						 gpointer      v_pointer);

gpointer	      g_value_get_pointer	(const(GValue) *value);

GType		      g_gtype_get_type		();

void		      g_value_set_gtype	        (GValue	      *value,
						 GType         v_gtype);

GType	              g_value_get_gtype	        (const(GValue) *value);

void		      g_value_set_variant	(GValue	      *value,
						 GVariant     *variant);

void		      g_value_take_variant	(GValue	      *value,
						 GVariant     *variant);

GVariant*	      g_value_get_variant	(const(GValue) *value);

GVariant*	      g_value_dup_variant	(const(GValue) *value);


/* Convenience for registering new pointer types */

GType                 g_pointer_type_register_static (const(gchar) *name);

/* debugging aid, describe value contents as string */

gchar*                g_strdup_value_contents   (const(GValue) *value);



void g_value_take_string		        (GValue		   *value,
						 gchar		   *v_string);
deprecated("use g_value_take_string")
void g_value_set_string_take_ownership          (GValue            *value,
                                                 gchar             *v_string);


alias gchararray = gchar*;

