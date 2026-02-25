(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (>= (str.len z) 1000))

(assert (str.in_re y (re.* (re.++ (str.to_re "926") (str.to_re "69")))))
(assert (str.in_re x (re.+ (re.union (re.+ (str.to_re "274")) (re.+ (str.to_re "70"))))))
(assert (str.in_re z (re.union (str.to_re "44") (re.++ (re.* (re.* (re.range "6" "9"))) (str.to_re "70")))))

(assert (> (+ (* (- 7) (str.to_int x)) (* 2 (str.to_int y)) (* 2 (str.to_int z))) 54))
(assert (> (+ (* 6 (str.len y)) (* 5 (str.to_int x))) 86))

(check-sat)