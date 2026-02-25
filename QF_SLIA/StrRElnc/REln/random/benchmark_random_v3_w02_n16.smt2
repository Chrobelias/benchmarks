(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re y (re.union (re.* (str.to_re "0")) (re.++ (str.to_re "15") (str.to_re "44")))))
(assert (str.in_re z (re.++ (re.* (re.range "0" "5")) (re.++ (str.to_re "3") (str.to_re "21")))))
(assert (str.in_re x (re.+ (re.++ (str.to_re "5") (re.++ (str.to_re "757") (str.to_re "468"))))))

(assert (< (+ (* 3 (str.len x)) (* (- 8) (str.to_int x))) 12))

(check-sat)