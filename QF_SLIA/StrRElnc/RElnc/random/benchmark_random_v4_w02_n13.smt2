(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (= (str.++ y z) (str.++ "48" x "75" a)))

(assert (str.in_re y (re.++ (re.* (re.+ (re.range "0" "8"))) (re.* (str.to_re "51")))))
(assert (str.in_re z (re.union (re.++ (str.to_re "732") (re.+ (str.to_re "905"))) (str.to_re "3"))))
(assert (str.in_re a (re.+ (str.to_re "833"))))
(assert (str.in_re x (re.union (re.union (str.to_re "507") (re.+ (str.to_re "13"))) (re.+ (str.to_re "22")))))

(assert (< (+ (* 2 (str.len x)) (* 10 (str.to_int x)) (* 6 (str.to_int y))) 100))

(check-sat)