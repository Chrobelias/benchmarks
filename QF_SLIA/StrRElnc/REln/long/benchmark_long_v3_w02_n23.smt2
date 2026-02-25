(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (>= (str.len x) 1000))
(assert (>= (str.len y) 1000))

(assert (str.in_re y (re.+ (re.+ (re.+ (re.* (str.to_re "13")))))))
(assert (str.in_re x (re.union (str.to_re "850") (re.* (re.union (re.+ (str.to_re "1")) (str.to_re "60"))))))
(assert (str.in_re z (re.union (re.union (str.to_re "535") (re.++ (str.to_re "48") (re.* (re.range "7" "9")))) (str.to_re "552"))))

(assert (< (+ (* (- 5) (str.len x)) (str.len y) (* 10 (str.len z)) (* (- 10) (str.to_int x))) 62))

(check-sat)