(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (>= (str.len z) 1000))
(assert (>= (str.len x) 1000))

(assert (= x (str.++ y "85" z)))

(assert (str.in_re x (re.+ (re.+ (re.union (str.to_re "94") (re.* (re.range "3" "9")))))))
(assert (str.in_re y (re.++ (re.+ (re.union (re.range "0" "6") (re.range "5" "9"))) (str.to_re "76"))))
(assert (str.in_re z (re.union (str.to_re "99") (re.++ (str.to_re "452") (re.* (str.to_re "517"))))))

(assert (> (+ (* 9 (str.len x)) (* 4 (str.len y)) (* 4 (str.len z))) 81))
(assert (> (+ (* 9 (str.to_int x)) (* 10 (str.to_int y)) (* (- 2) (str.to_int z))) 78))

(check-sat)