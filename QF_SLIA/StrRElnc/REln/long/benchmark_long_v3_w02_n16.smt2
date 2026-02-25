(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (>= (str.len z) 1000))

(assert (str.in_re z (re.+ (re.+ (re.++ (re.* (str.to_re "294")) (re.range "4" "8"))))))
(assert (str.in_re y (re.* (re.range "0" "5"))))
(assert (str.in_re x (re.++ (re.+ (str.to_re "34")) (re.union (str.to_re "778") (re.* (str.to_re "70"))))))

(assert (= (+ (* 10 (str.len x)) (* (- 6) (str.to_int z))) 45))

(check-sat)