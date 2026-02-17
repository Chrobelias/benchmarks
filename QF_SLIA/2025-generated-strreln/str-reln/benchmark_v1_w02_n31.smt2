(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.union (re.union (re.++ (str.to_re "129") (re.+ (str.to_re "5"))) (str.to_re "58")) (re.range "7" "9"))))

(assert (= (+ (* 9 (str.len x)) (* (- 10) (str.to_int x))) 78))

(check-sat)