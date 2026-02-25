(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.++ (re.++ (re.* (str.to_re "354")) (str.to_re "410")) (re.range "3" "7"))))

(assert (>= (+ (* 7 (str.len x)) (* (- 8) (str.to_int x))) 55))

(check-sat)