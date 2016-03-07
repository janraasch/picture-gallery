-- :name create-user! :! :n
-- :doc creates a new user record
INSERT INTO users
(id, pass)
VALUES (:id, :pass)

-- :name get-user :? :1
-- :doc retrieve a user given the id.
SELECT * FROM users
WHERE id = :id

-- :name delete-user! :! :n
-- :doc delete a user given the id
DELETE FROM users
WHERE id = :id

-- :name save-file! :! :n
-- :doc create a new file record
INSERT INTO files
(owner, type, name, data)
VALUES (:owner, :type, :name, :data)

-- :name list-thumbnails :? :*
-- :doc selects thumbnail names for the given gallery owner
SELECT owner, name FROM files
  WHERE owner = :owner
    AND name LIKE 'thumb\_%'

-- :name get-image :? :1
-- :doc retrieve image data by name
SELECT type, data FROM files
WHERE name = :name
