(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= (str.++ y x) (str.++ z "31")))

(assert (str.in_re x (re.* (re.range "1" "4"))))
(assert (str.in_re z (re.union (re.union (re.+ (str.to_re "467")) (str.to_re "75")) (str.to_re "15"))))
(assert (str.in_re y (re.* (re.union (str.to_re "789") (re.* (re.range "4" "8"))))))

(assert (> (+ (* (- 8) (str.len x)) (* (- 8) (str.len y)) (* 8 (str.len z))) 47))
(assert (< (+ (* 6 (str.to_int x)) (* (- 8) (str.to_int y)) (* 10 (str.to_int z))) 33))

(check-sat)