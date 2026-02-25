(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= x (str.++ "44" y)))

(assert (str.in_re x (re.* (re.++ (re.* (re.* (str.to_re "708"))) (re.range "0" "9")))))
(assert (str.in_re y (re.* (re.range "7" "9"))))

(assert (< (+ (* (- 2) (str.len x)) (* 5 (str.to_int x))) 46))

(check-sat)