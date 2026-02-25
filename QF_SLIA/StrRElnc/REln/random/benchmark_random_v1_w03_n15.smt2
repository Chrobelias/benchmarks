(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.++ (re.++ (re.range "3" "9") (re.range "1" "9")) (re.* (str.to_re "0")))))

(assert (< (* (- 4) (str.to_int x)) 88))
(assert (< (* 9 (str.len x)) 92))
(assert (> (* 10 (str.to_int x)) 5))

(check-sat)